.class public final Lcom/minhub/gamehub/data/GameRepository;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000bJ\u0016\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/GameRepository;",
        "",
        "ctx",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "storage",
        "Lcom/minhub/gamehub/data/GameStorage;",
        "games",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/minhub/gamehub/data/Game;",
        "getGames",
        "()Landroidx/lifecycle/LiveData;",
        "insert",
        "g",
        "update",
        "",
        "replaceInstall",
        "delete",
        "toggleFavorite",
        "addPlaytime",
        "id",
        "",
        "minutes",
        "findById",
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

.field private final storage:Lcom/minhub/gamehub/data/GameStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/minhub/gamehub/data/GameStorage;->Companion:Lcom/minhub/gamehub/data/GameStorage$Companion;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/GameStorage$Companion;->get(Landroid/content/Context;)Lcom/minhub/gamehub/data/GameStorage;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/GameStorage;->getGames()Landroidx/lifecycle/LiveData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/minhub/gamehub/data/GameRepository;->games:Landroidx/lifecycle/LiveData;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final addPlaytime(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/minhub/gamehub/data/GameStorage;->addPlaytime(IIJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final delete(Lcom/minhub/gamehub/data/Game;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/GameStorage;->delete(Lcom/minhub/gamehub/data/Game;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final findById(I)Lcom/minhub/gamehub/data/Game;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/GameStorage;->findById(I)Lcom/minhub/gamehub/data/Game;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->games:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final insert(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;
    .locals 1

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/GameStorage;->insert(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final replaceInstall(Lcom/minhub/gamehub/data/Game;)V
    .locals 1

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/GameStorage;->replaceInstall(Lcom/minhub/gamehub/data/Game;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final toggleFavorite(Lcom/minhub/gamehub/data/Game;)V
    .locals 2

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getFavorite()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/minhub/gamehub/data/GameStorage;->setFavorite(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final update(Lcom/minhub/gamehub/data/Game;)V
    .locals 1

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/GameRepository;->storage:Lcom/minhub/gamehub/data/GameStorage;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/GameStorage;->update(Lcom/minhub/gamehub/data/Game;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
