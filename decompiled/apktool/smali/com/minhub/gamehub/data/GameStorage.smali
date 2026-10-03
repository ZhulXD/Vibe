.class public final Lcom/minhub/gamehub/data/GameStorage;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/data/GameStorage$Companion;,
        Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 O2\u00020\u0001:\u0002POB\'\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0015\u001a\u00020\u00062\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u0017\u001a\u00020\u00052\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010\"\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010$\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008$\u0010#J\u0015\u0010%\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010)\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u001c\u00a2\u0006\u0004\u0008)\u0010*J%\u0010.\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u00052\u0006\u0010-\u001a\u00020,\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00100\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\'\u001a\u00020\u0005\u00a2\u0006\u0004\u00080\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u00102R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R \u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R#\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0:8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u0014\u0010?\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u00102R\u0014\u0010@\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u00102R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0014\u0010D\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0014\u0010F\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010H\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010N\u001a\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010M\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/GameStorage;",
        "",
        "Ljava/io/File;",
        "file",
        "Lkotlin/Function1;",
        "",
        "",
        "onGameDeleted",
        "<init>",
        "(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V",
        "source",
        "Lcom/minhub/gamehub/data/StoredParse;",
        "readValidated",
        "(Ljava/io/File;)Lcom/minhub/gamehub/data/StoredParse;",
        "",
        "Lcom/minhub/gamehub/data/Game;",
        "readCurrentLocked",
        "()Ljava/util/List;",
        "reload",
        "()Ljava/lang/Object;",
        "list",
        "publishLocked",
        "(Ljava/util/List;)V",
        "nextIdLocked",
        "(Ljava/util/List;)I",
        "target",
        "",
        "bytes",
        "",
        "atomicWriteSmall",
        "(Ljava/io/File;[B)Z",
        "game",
        "insert",
        "(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;",
        "update",
        "(Lcom/minhub/gamehub/data/Game;)V",
        "replaceInstall",
        "delete",
        "(Lcom/minhub/gamehub/data/Game;)Ljava/lang/Object;",
        "id",
        "fav",
        "setFavorite",
        "(IZ)V",
        "addMinutes",
        "",
        "now",
        "addPlaytime",
        "(IIJ)V",
        "findById",
        "(I)Lcom/minhub/gamehub/data/Game;",
        "Ljava/io/File;",
        "Lkotlin/jvm/functions/Function1;",
        "Li1/l;",
        "gson",
        "Li1/l;",
        "Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;",
        "_games",
        "Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "games",
        "Landroidx/lifecycle/LiveData;",
        "getGames",
        "()Landroidx/lifecycle/LiveData;",
        "backup",
        "idSeedFile",
        "Lcom/minhub/gamehub/data/EngineCache;",
        "engineCache",
        "Lcom/minhub/gamehub/data/EngineCache;",
        "maxBytes",
        "J",
        "lock",
        "Ljava/lang/Object;",
        "storageHealthy",
        "Z",
        "snapshot",
        "Ljava/util/List;",
        "getGamesRoot",
        "()Ljava/io/File;",
        "gamesRoot",
        "Companion",
        "SnapshotLiveData",
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
        "SMAP\nGameStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n1#2:321\n360#3,7:322\n360#3,7:329\n295#3,2:336\n774#3:338\n865#3,2:339\n295#3,2:341\n295#3,2:343\n295#3,2:345\n1563#3:347\n1634#3,3:348\n*S KotlinDebug\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorage\n*L\n247#1:322,7\n267#1:329,7\n278#1:336,2\n279#1:338\n279#1:339,2\n297#1:341,2\n303#1:343,2\n311#1:345,2\n148#1:347\n148#1:348,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/minhub/gamehub/data/GameStorage$Companion;

.field public static final FILE_NAME:Ljava/lang/String; = "games.json"

.field private static volatile INSTANCE:Lcom/minhub/gamehub/data/GameStorage;

.field private static final PROCESS_LOCK:Ljava/lang/Object;


# instance fields
.field private final _games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData<",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;>;"
        }
    .end annotation
.end field

.field private final backup:Ljava/io/File;

.field private final engineCache:Lcom/minhub/gamehub/data/EngineCache;

.field private final file:Ljava/io/File;

.field private final games:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gson:Li1/l;

.field private final idSeedFile:Ljava/io/File;

.field private final lock:Ljava/lang/Object;

.field private final maxBytes:J

.field private final onGameDeleted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private snapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;"
        }
    .end annotation
.end field

.field private storageHealthy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/GameStorage$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/data/GameStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/minhub/gamehub/data/GameStorage;->Companion:Lcom/minhub/gamehub/data/GameStorage$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/minhub/gamehub/data/GameStorage;->PROCESS_LOCK:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->onGameDeleted:Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance p2, Li1/l;

    invoke-direct {p2}, Li1/l;-><init>()V

    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->gson:Li1/l;

    .line 6
    new-instance p2, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 7
    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->games:Landroidx/lifecycle/LiveData;

    .line 8
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bak"

    .line 9
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 11
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".next-id"

    .line 12
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->idSeedFile:Ljava/io/File;

    .line 14
    new-instance p2, Lcom/minhub/gamehub/data/EngineCache;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const-string v1, "engine-cache.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/minhub/gamehub/data/EngineCache;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/minhub/gamehub/data/GameStorage;->engineCache:Lcom/minhub/gamehub/data/EngineCache;

    const-wide/32 p1, 0xa00000

    .line 15
    iput-wide p1, p0, Lcom/minhub/gamehub/data/GameStorage;->maxBytes:J

    .line 16
    sget-object p1, Lcom/minhub/gamehub/data/GameStorage;->PROCESS_LOCK:Ljava/lang/Object;

    iput-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 18
    invoke-direct {p0}, Lcom/minhub/gamehub/data/GameStorage;->reload()Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 29
    new-instance p2, LL1/d;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, LL1/d;-><init>(I)V

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/data/GameStorage;-><init>(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/data/GameStorage;-><init>(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final _init_$lambda$0(I)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/minhub/gamehub/data/GameStorage;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/data/GameStorage;->reload$lambda$9$lambda$5(Ljava/util/List;Lcom/minhub/gamehub/data/GameStorage;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/minhub/gamehub/data/GameStorage;
    .locals 1

    .line 1
    sget-object v0, Lcom/minhub/gamehub/data/GameStorage;->INSTANCE:Lcom/minhub/gamehub/data/GameStorage;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/minhub/gamehub/data/GameStorage;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/minhub/gamehub/data/GameStorage;->INSTANCE:Lcom/minhub/gamehub/data/GameStorage;

    .line 2
    .line 3
    return-void
.end method

.method private final atomicWriteSmall(Ljava/io/File;[B)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, ".tmp"

    .line 12
    .line 13
    const-string v4, "."

    .line 14
    .line 15
    invoke-static {v4, v2, v3}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v5, ".rollback"

    .line 33
    .line 34
    invoke-static {v4, v3, v5}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V

    .line 58
    .line 59
    .line 60
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    :try_start_2
    invoke-static {v3, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 67
    .line 68
    .line 69
    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    const/4 v3, 0x1

    .line 71
    if-eqz p2, :cond_0

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    .line 75
    .line 76
    return v3

    .line 77
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 84
    .line 85
    .line 86
    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    if-nez p2, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 90
    .line 91
    .line 92
    return v2

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 102
    .line 103
    .line 104
    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    if-nez p2, :cond_2

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :cond_2
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 118
    .line 119
    .line 120
    move v2, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_4

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :catchall_1
    move-exception p2

    .line 136
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 137
    :catchall_2
    move-exception v4

    .line 138
    :try_start_7
    invoke-static {v3, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    :catch_0
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-nez p2, :cond_5

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 161
    .line 162
    .line 163
    return v2

    .line 164
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method public static synthetic b(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/data/GameStorage;->_init_$lambda$0(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getGamesRoot()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "games"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private final nextIdLocked(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->idSeedFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->idSeedFile:Ljava/io/File;

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    check-cast v0, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string v0, "Invalid id seed"

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 76
    .line 77
    const-string v0, "Unable to read id seed"

    .line 78
    .line 79
    invoke-direct {p1, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_2
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lcom/minhub/gamehub/data/Game;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-gez v4, :cond_4

    .line 136
    .line 137
    move-object v2, v3

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move-object p1, v2

    .line 140
    :goto_3
    if-eqz p1, :cond_6

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    const/4 p1, 0x0

    .line 148
    :goto_4
    int-to-long v2, p1

    .line 149
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    const-wide/32 v2, 0x7fffffff

    .line 154
    .line 155
    .line 156
    cmp-long p1, v0, v2

    .line 157
    .line 158
    if-gez p1, :cond_8

    .line 159
    .line 160
    const-wide/16 v2, 0x1

    .line 161
    .line 162
    add-long/2addr v0, v2

    .line 163
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->idSeedFile:Ljava/io/File;

    .line 164
    .line 165
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const-string v3, "getBytes(...)"

    .line 176
    .line 177
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p1, v2}, Lcom/minhub/gamehub/data/GameStorage;->atomicWriteSmall(Ljava/io/File;[B)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_7

    .line 185
    .line 186
    long-to-int p1, v0

    .line 187
    return p1

    .line 188
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 189
    .line 190
    const-string v0, "Unable to persist id seed"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 197
    .line 198
    const-string v0, "No IDs remain (Int.MAX_VALUE reached)"

    .line 199
    .line 200
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p1
.end method

.method private final publishLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->gson:Li1/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "toJson(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "getBytes(...)"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    array-length v0, p1

    .line 24
    int-to-long v0, v0

    .line 25
    iget-wide v2, p0, Lcom/minhub/gamehub/data/GameStorage;->maxBytes:J

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-gtz v0, :cond_e

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 32
    .line 33
    if-eqz v0, :cond_d

    .line 34
    .line 35
    new-instance v0, Ljava/io/File;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "."

    .line 50
    .line 51
    const-string v4, ".tmp"

    .line 52
    .line 53
    invoke-static {v3, v2, v4}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_0

    .line 98
    .line 99
    move-object v1, v2

    .line 100
    :cond_0
    check-cast v1, [B

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move-object v1, v2

    .line 104
    :goto_1
    iget-object v3, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 115
    .line 116
    invoke-static {v3}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    goto :goto_2

    .line 125
    :catchall_1
    move-exception v3

    .line 126
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 127
    .line 128
    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_2

    .line 141
    .line 142
    move-object v3, v2

    .line 143
    :cond_2
    check-cast v3, [B

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    move-object v3, v2

    .line 147
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-eqz v4, :cond_4

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :catch_0
    move-exception p1

    .line 160
    goto :goto_7

    .line 161
    :cond_4
    :goto_4
    new-instance v4, Ljava/io/FileOutputStream;

    .line 162
    .line 163
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .line 165
    .line 166
    :try_start_3
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 177
    .line 178
    .line 179
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    .line 181
    :try_start_4
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_8

    .line 191
    .line 192
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eqz p1, :cond_6

    .line 199
    .line 200
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 210
    .line 211
    const-string v2, "Unable to replace backup"

    .line 212
    .line 213
    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 218
    .line 219
    iget-object v2, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 220
    .line 221
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_7

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 229
    .line 230
    const-string v2, "Unable to rotate primary"

    .line 231
    .line 232
    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 237
    .line 238
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_9

    .line 243
    .line 244
    return-void

    .line 245
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 246
    .line 247
    const-string v2, "Unable to publish primary"

    .line 248
    .line 249
    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 253
    :catchall_2
    move-exception p1

    .line 254
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 255
    :catchall_3
    move-exception v2

    .line 256
    :try_start_6
    invoke-static {v4, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 260
    :goto_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 261
    .line 262
    .line 263
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 264
    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 268
    .line 269
    invoke-static {v0, v1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 270
    .line 271
    .line 272
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :catchall_4
    move-exception v0

    .line 276
    goto :goto_9

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 288
    .line 289
    .line 290
    goto :goto_a

    .line 291
    :goto_9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 292
    .line 293
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    :goto_a
    if-eqz v3, :cond_b

    .line 301
    .line 302
    :try_start_8
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 303
    .line 304
    invoke-static {v0, v3}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 305
    .line 306
    .line 307
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 308
    .line 309
    goto :goto_b

    .line 310
    :catchall_5
    move-exception v0

    .line 311
    goto :goto_c

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    :goto_b
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 323
    .line 324
    .line 325
    goto :goto_d

    .line 326
    :goto_c
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 327
    .line 328
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    :goto_d
    instance-of v0, p1, Ljava/io/IOException;

    .line 336
    .line 337
    if-eqz v0, :cond_c

    .line 338
    .line 339
    goto :goto_e

    .line 340
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 341
    .line 342
    const-string v1, "Unable to commit games"

    .line 343
    .line 344
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    move-object p1, v0

    .line 348
    :goto_e
    throw p1

    .line 349
    :cond_d
    new-instance p1, Ljava/io/IOException;

    .line 350
    .line 351
    const-string v0, "Game storage is unreadable; refusing to overwrite recovery evidence"

    .line 352
    .line 353
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    throw p1

    .line 357
    :cond_e
    new-instance p1, Ljava/io/IOException;

    .line 358
    .line 359
    iget-wide v0, p0, Lcom/minhub/gamehub/data/GameStorage;->maxBytes:J

    .line 360
    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v3, "Game library exceeds "

    .line 364
    .line 365
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v0, " bytes"

    .line 372
    .line 373
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw p1
.end method

.method private final readCurrentLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/data/GameStorage;->readValidated(Ljava/io/File;)Lcom/minhub/gamehub/data/StoredParse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 13
    .line 14
    check-cast v0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/StoredParse$Valid;->getGames()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/data/GameStorage;->readValidated(Ljava/io/File;)Lcom/minhub/gamehub/data/StoredParse;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v1, v0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iput-boolean v2, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 32
    .line 33
    check-cast v0, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/StoredParse$Valid;->getGames()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->backup:Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    :goto_0
    iput-boolean v2, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Both games files are unreadable: "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "GameStorage"

    .line 83
    .line 84
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method private final readValidated(Ljava/io/File;)Lcom/minhub/gamehub/data/StoredParse;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    check-cast p1, [B

    .line 39
    .line 40
    array-length v0, p1

    .line 41
    int-to-long v0, v0

    .line 42
    iget-wide v2, p0, Lcom/minhub/gamehub/data/GameStorage;->maxBytes:J

    .line 43
    .line 44
    cmp-long v0, v0, v2

    .line 45
    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    sget-object p1, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 52
    .line 53
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->gson:Li1/l;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/minhub/gamehub/data/GameStorageKt;->access$parseStoredGames(Ljava/lang/String;Li1/l;)Lcom/minhub/gamehub/data/StoredParse;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sget-object p1, Lcom/minhub/gamehub/data/StoredParse$Invalid;->INSTANCE:Lcom/minhub/gamehub/data/StoredParse$Invalid;

    .line 66
    .line 67
    :goto_1
    return-object p1
.end method

.method private final reload()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->file:Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {p0, v1}, Lcom/minhub/gamehub/data/GameStorage;->readValidated(Ljava/io/File;)Lcom/minhub/gamehub/data/StoredParse;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v1, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/StoredParse$Valid;->getGames()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/minhub/gamehub/data/GameStorage;->readCurrentLocked()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    instance-of v3, v1, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    iput-boolean v3, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 34
    .line 35
    :cond_1
    iget-object v3, p0, Lcom/minhub/gamehub/data/GameStorage;->engineCache:Lcom/minhub/gamehub/data/EngineCache;

    .line 36
    .line 37
    new-instance v4, LA1/G0;

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    invoke-direct {v4, v5, v2, p0}, LA1/G0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lcom/minhub/gamehub/data/EngineCache;->withBatch(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/util/List;

    .line 48
    .line 49
    instance-of v1, v1, Lcom/minhub/gamehub/data/StoredParse$Valid;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 60
    .line 61
    invoke-direct {p0, v3}, Lcom/minhub/gamehub/data/GameStorage;->publishLocked(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v1

    .line 72
    :try_start_2
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    move-object v4, v1

    .line 89
    check-cast v4, Lkotlin/Unit;

    .line 90
    .line 91
    iput-object v3, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    iput-object v2, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iput-object v3, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    :goto_2
    monitor-exit v0

    .line 126
    return-object v1

    .line 127
    :goto_3
    monitor-exit v0

    .line 128
    throw v1
.end method

.method private static final reload$lambda$9$lambda$5(Ljava/util/List;Lcom/minhub/gamehub/data/GameStorage;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 25
    .line 26
    sget-object v2, Lcom/minhub/gamehub/data/GameMetadataSync;->INSTANCE:Lcom/minhub/gamehub/data/GameMetadataSync;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/minhub/gamehub/data/GameStorage;->engineCache:Lcom/minhub/gamehub/data/EngineCache;

    .line 29
    .line 30
    invoke-virtual {v2, v1, v3}, Lcom/minhub/gamehub/data/GameMetadataSync;->syncFromDisk(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;)Lcom/minhub/gamehub/data/Game;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final addPlaytime(IIJ)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move/from16 v5, p1

    .line 30
    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    :goto_0
    move-object v4, v3

    .line 38
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getPlaytimeMinutes()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-long v5, v0

    .line 47
    move/from16 v0, p2

    .line 48
    .line 49
    int-to-long v7, v0

    .line 50
    add-long v9, v5, v7

    .line 51
    .line 52
    const-wide/32 v11, -0x80000000

    .line 53
    .line 54
    .line 55
    const-wide/32 v13, 0x7fffffff

    .line 56
    .line 57
    .line 58
    invoke-static/range {v9 .. v14}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    long-to-int v0, v5

    .line 63
    const v34, 0x7ffcfff

    .line 64
    .line 65
    .line 66
    const/16 v35, 0x0

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v20, 0x0

    .line 82
    .line 83
    const/16 v21, 0x0

    .line 84
    .line 85
    const/16 v22, 0x0

    .line 86
    .line 87
    const/16 v23, 0x0

    .line 88
    .line 89
    const/16 v24, 0x0

    .line 90
    .line 91
    const/16 v25, 0x0

    .line 92
    .line 93
    const/16 v26, 0x0

    .line 94
    .line 95
    const/16 v27, 0x0

    .line 96
    .line 97
    const/16 v28, 0x0

    .line 98
    .line 99
    const-wide/16 v29, 0x0

    .line 100
    .line 101
    const/16 v31, 0x0

    .line 102
    .line 103
    const/16 v32, 0x0

    .line 104
    .line 105
    const/16 v33, 0x0

    .line 106
    .line 107
    move-wide/from16 v18, p3

    .line 108
    .line 109
    move/from16 v17, v0

    .line 110
    .line 111
    invoke-static/range {v4 .. v35}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/data/GameStorage;->update(Lcom/minhub/gamehub/data/Game;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    :cond_2
    monitor-exit v2

    .line 121
    return-void

    .line 122
    :goto_1
    monitor-exit v2

    .line 123
    throw v0
.end method

.method public final delete(Lcom/minhub/gamehub/data/Game;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 12
    .line 13
    if-eqz v2, :cond_9

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    move-object v5, v3

    .line 31
    check-cast v5, Lcom/minhub/gamehub/data/Game;

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ne v5, v6, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    move-object v3, v4

    .line 48
    :goto_0
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object v6, v5

    .line 74
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 75
    .line 76
    invoke-virtual {v6}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eq v6, v7, :cond_3

    .line 85
    .line 86
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-direct {p0, v2}, Lcom/minhub/gamehub/data/GameStorage;->publishLocked(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/minhub/gamehub/data/GameStorage;->getGamesRoot()Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    move-object p1, v4

    .line 133
    :cond_5
    check-cast p1, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    :try_start_3
    new-instance v1, Ljava/io/File;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 152
    goto :goto_3

    .line 153
    :catchall_2
    move-exception v1

    .line 154
    :try_start_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 155
    .line 156
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    move-object v4, v1

    .line 172
    :goto_4
    check-cast v4, Ljava/io/File;

    .line 173
    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    if-eqz v4, :cond_7

    .line 177
    .line 178
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string v1, "getPath(...)"

    .line 189
    .line 190
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const/4 v1, 0x1

    .line 194
    new-array v1, v1, [C

    .line 195
    .line 196
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 197
    .line 198
    const/4 v5, 0x0

    .line 199
    aput-char v2, v1, v5

    .line 200
    .line 201
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const-string v2, "getPath(...)"

    .line 227
    .line 228
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v1, p1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    if-eqz p1, :cond_7

    .line 236
    .line 237
    :try_start_5
    invoke-static {v4}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 246
    .line 247
    .line 248
    goto :goto_5

    .line 249
    :catchall_3
    move-exception p1

    .line 250
    :try_start_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 251
    .line 252
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    .line 258
    .line 259
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 260
    .line 261
    :try_start_7
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->engineCache:Lcom/minhub/gamehub/data/EngineCache;

    .line 262
    .line 263
    invoke-virtual {p1, v4}, Lcom/minhub/gamehub/data/EngineCache;->forget(Ljava/io/File;)V

    .line 264
    .line 265
    .line 266
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 267
    .line 268
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :catchall_4
    move-exception p1

    .line 273
    :try_start_8
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 274
    .line 275
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 280
    .line 281
    .line 282
    :cond_8
    :goto_6
    :try_start_9
    iget-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->onGameDeleted:Lkotlin/jvm/functions/Function1;

    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 296
    .line 297
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :catchall_5
    move-exception p1

    .line 302
    :try_start_a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 303
    .line 304
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 312
    .line 313
    monitor-exit v0

    .line 314
    return-object p1

    .line 315
    :cond_9
    :try_start_b
    new-instance p1, Ljava/io/IOException;

    .line 316
    .line 317
    const-string v1, "Game storage is unreadable; delete refused"

    .line 318
    .line 319
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 323
    :goto_8
    monitor-exit v0

    .line 324
    throw p1
.end method

.method public final findById(I)Lcom/minhub/gamehub/data/Game;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v3, v2

    .line 21
    check-cast v3, Lcom/minhub/gamehub/data/Game;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v3, p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    check-cast v2, Lcom/minhub/gamehub/data/Game;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v2

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw p1
.end method

.method public final getGames()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->games:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final insert(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "game"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v4, v1, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    move-object v4, v3

    .line 24
    :try_start_1
    invoke-direct {v1, v0}, Lcom/minhub/gamehub/data/GameStorage;->nextIdLocked(Ljava/util/List;)I

    .line 25
    .line 26
    .line 27
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    const v32, 0x7fffffe

    .line 29
    .line 30
    .line 31
    const/16 v33, 0x0

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    const/4 v4, 0x0

    .line 35
    move-object v6, v5

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v7, v6

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v8, v7

    .line 40
    const/4 v7, 0x0

    .line 41
    move-object v9, v8

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v10, v9

    .line 44
    const/4 v9, 0x0

    .line 45
    move-object v11, v10

    .line 46
    const/4 v10, 0x0

    .line 47
    move-object v12, v11

    .line 48
    const/4 v11, 0x0

    .line 49
    move-object v13, v12

    .line 50
    const/4 v12, 0x0

    .line 51
    move-object v14, v13

    .line 52
    const/4 v13, 0x0

    .line 53
    move-object v15, v14

    .line 54
    const/4 v14, 0x0

    .line 55
    move-object/from16 v16, v15

    .line 56
    .line 57
    const/4 v15, 0x0

    .line 58
    move-object/from16 v18, v16

    .line 59
    .line 60
    const-wide/16 v16, 0x0

    .line 61
    .line 62
    move-object/from16 v19, v18

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    move-object/from16 v20, v19

    .line 67
    .line 68
    const/16 v19, 0x0

    .line 69
    .line 70
    move-object/from16 v21, v20

    .line 71
    .line 72
    const/16 v20, 0x0

    .line 73
    .line 74
    move-object/from16 v22, v21

    .line 75
    .line 76
    const/16 v21, 0x0

    .line 77
    .line 78
    move-object/from16 v23, v22

    .line 79
    .line 80
    const/16 v22, 0x0

    .line 81
    .line 82
    move-object/from16 v24, v23

    .line 83
    .line 84
    const/16 v23, 0x0

    .line 85
    .line 86
    move-object/from16 v25, v24

    .line 87
    .line 88
    const/16 v24, 0x0

    .line 89
    .line 90
    move-object/from16 v26, v25

    .line 91
    .line 92
    const/16 v25, 0x0

    .line 93
    .line 94
    move-object/from16 v27, v26

    .line 95
    .line 96
    const/16 v26, 0x0

    .line 97
    .line 98
    move-object/from16 v29, v27

    .line 99
    .line 100
    const-wide/16 v27, 0x0

    .line 101
    .line 102
    move-object/from16 v30, v29

    .line 103
    .line 104
    const/16 v29, 0x0

    .line 105
    .line 106
    move-object/from16 v31, v30

    .line 107
    .line 108
    const/16 v30, 0x0

    .line 109
    .line 110
    move-object/from16 v34, v31

    .line 111
    .line 112
    const/16 v31, 0x0

    .line 113
    .line 114
    :try_start_2
    invoke-static/range {v2 .. v33}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v0}, Lcom/minhub/gamehub/data/GameStorage;->publishLocked(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, v1, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 129
    .line 130
    iget-object v3, v1, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 131
    .line 132
    invoke-virtual {v3, v0}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    .line 135
    monitor-exit v34

    .line 136
    return-object v2

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto :goto_0

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    move-object/from16 v34, v4

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    move-object/from16 v34, v3

    .line 144
    .line 145
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 146
    .line 147
    const-string v2, "Game storage is unreadable; insertion refused"

    .line 148
    .line 149
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :catchall_2
    move-exception v0

    .line 154
    move-object/from16 v34, v3

    .line 155
    .line 156
    :goto_0
    monitor-exit v34

    .line 157
    throw v0
.end method

.method public final replaceInstall(Lcom/minhub/gamehub/data/Game;)V
    .locals 6

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ne v4, v5, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/4 v3, -0x1

    .line 53
    :goto_1
    if-ltz v3, :cond_2

    .line 54
    .line 55
    invoke-interface {v1, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/minhub/gamehub/data/GameStorage;->publishLocked(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 77
    .line 78
    const-string v1, "Game storage is unreadable; update refused"

    .line 79
    .line 80
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_2
    monitor-exit v0

    .line 85
    throw p1
.end method

.method public final setFavorite(IZ)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v0, v1, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move/from16 v5, p1

    .line 30
    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    :goto_0
    move-object v4, v3

    .line 38
    check-cast v4, Lcom/minhub/gamehub/data/Game;

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    const v34, 0x7fff7ff

    .line 43
    .line 44
    .line 45
    const/16 v35, 0x0

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const-wide/16 v18, 0x0

    .line 61
    .line 62
    const/16 v20, 0x0

    .line 63
    .line 64
    const/16 v21, 0x0

    .line 65
    .line 66
    const/16 v22, 0x0

    .line 67
    .line 68
    const/16 v23, 0x0

    .line 69
    .line 70
    const/16 v24, 0x0

    .line 71
    .line 72
    const/16 v25, 0x0

    .line 73
    .line 74
    const/16 v26, 0x0

    .line 75
    .line 76
    const/16 v27, 0x0

    .line 77
    .line 78
    const/16 v28, 0x0

    .line 79
    .line 80
    const-wide/16 v29, 0x0

    .line 81
    .line 82
    const/16 v31, 0x0

    .line 83
    .line 84
    const/16 v32, 0x0

    .line 85
    .line 86
    const/16 v33, 0x0

    .line 87
    .line 88
    move/from16 v16, p2

    .line 89
    .line 90
    invoke-static/range {v4 .. v35}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/data/GameStorage;->update(Lcom/minhub/gamehub/data/Game;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    :cond_2
    monitor-exit v2

    .line 100
    return-void

    .line 101
    :goto_1
    monitor-exit v2

    .line 102
    throw v0
.end method

.method public final update(Lcom/minhub/gamehub/data/Game;)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "game"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lcom/minhub/gamehub/data/GameStorage;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v4, v1, Lcom/minhub/gamehub/data/GameStorage;->storageHealthy:Z

    .line 20
    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lcom/minhub/gamehub/data/Game;

    .line 39
    .line 40
    invoke-virtual {v6}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-ne v6, v7, :cond_0

    .line 49
    .line 50
    :goto_1
    move v4, v5

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object/from16 v34, v3

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_1
    const/4 v5, -0x1

    .line 61
    goto :goto_1

    .line 62
    :goto_2
    if-ltz v4, :cond_2

    .line 63
    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/minhub/gamehub/data/Game;

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getStatus()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v19

    .line 78
    invoke-virtual {v5}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const v32, 0x6ff7fdf

    .line 83
    .line 84
    .line 85
    const/16 v33, 0x0

    .line 86
    .line 87
    move-object v5, v3

    .line 88
    const/4 v3, 0x0

    .line 89
    move v6, v4

    .line 90
    const/4 v4, 0x0

    .line 91
    move-object v7, v5

    .line 92
    const/4 v5, 0x0

    .line 93
    move v9, v6

    .line 94
    const/4 v6, 0x0

    .line 95
    move-object v10, v7

    .line 96
    const/4 v7, 0x0

    .line 97
    move v11, v9

    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v12, v10

    .line 100
    const/4 v10, 0x0

    .line 101
    move v13, v11

    .line 102
    const/4 v11, 0x0

    .line 103
    move-object v14, v12

    .line 104
    const/4 v12, 0x0

    .line 105
    move v15, v13

    .line 106
    const/4 v13, 0x0

    .line 107
    move-object/from16 v16, v14

    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    move/from16 v17, v15

    .line 111
    .line 112
    const/4 v15, 0x0

    .line 113
    move-object/from16 v18, v16

    .line 114
    .line 115
    move/from16 v20, v17

    .line 116
    .line 117
    const-wide/16 v16, 0x0

    .line 118
    .line 119
    move-object/from16 v21, v18

    .line 120
    .line 121
    const/16 v18, 0x0

    .line 122
    .line 123
    move/from16 v22, v20

    .line 124
    .line 125
    const/16 v20, 0x0

    .line 126
    .line 127
    move-object/from16 v23, v21

    .line 128
    .line 129
    const/16 v21, 0x0

    .line 130
    .line 131
    move/from16 v24, v22

    .line 132
    .line 133
    const/16 v22, 0x0

    .line 134
    .line 135
    move-object/from16 v25, v23

    .line 136
    .line 137
    const/16 v23, 0x0

    .line 138
    .line 139
    move/from16 v26, v24

    .line 140
    .line 141
    const/16 v24, 0x0

    .line 142
    .line 143
    move-object/from16 v27, v25

    .line 144
    .line 145
    const/16 v25, 0x0

    .line 146
    .line 147
    move/from16 v28, v26

    .line 148
    .line 149
    const/16 v26, 0x0

    .line 150
    .line 151
    move-object/from16 v30, v27

    .line 152
    .line 153
    move/from16 v31, v28

    .line 154
    .line 155
    const-wide/16 v27, 0x0

    .line 156
    .line 157
    move-object/from16 v34, v30

    .line 158
    .line 159
    const/16 v30, 0x0

    .line 160
    .line 161
    move/from16 v35, v31

    .line 162
    .line 163
    const/16 v31, 0x0

    .line 164
    .line 165
    move/from16 v1, v35

    .line 166
    .line 167
    :try_start_1
    invoke-static/range {v2 .. v33}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 172
    .line 173
    .line 174
    move-object/from16 v1, p0

    .line 175
    .line 176
    :try_start_2
    invoke-direct {v1, v0}, Lcom/minhub/gamehub/data/GameStorage;->publishLocked(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, v1, Lcom/minhub/gamehub/data/GameStorage;->snapshot:Ljava/util/List;

    .line 184
    .line 185
    iget-object v2, v1, Lcom/minhub/gamehub/data/GameStorage;->_games:Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;

    .line 186
    .line 187
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;->postValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :catchall_1
    move-exception v0

    .line 192
    goto :goto_4

    .line 193
    :catchall_2
    move-exception v0

    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_2
    move-object/from16 v34, v3

    .line 198
    .line 199
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    .line 201
    monitor-exit v34

    .line 202
    return-void

    .line 203
    :cond_3
    move-object/from16 v34, v3

    .line 204
    .line 205
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 206
    .line 207
    const-string v2, "Game storage is unreadable; update refused"

    .line 208
    .line 209
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    :goto_4
    monitor-exit v34

    .line 214
    throw v0
.end method
