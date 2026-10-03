.class public final synthetic LC1/K;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/K;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/K;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, LC1/K;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, LC1/K;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, LC1/K;->f:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, LC1/K;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/K;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 9
    .line 10
    iget-object v1, p0, LC1/K;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 13
    .line 14
    iget-object v2, p0, LC1/K;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 17
    .line 18
    iget-object v3, p0, LC1/K;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->j(Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;)Lkotlin/Unit;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, LC1/K;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    iget-object v1, p0, LC1/K;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, LD1/b;

    .line 34
    .line 35
    iget-object v2, p0, LC1/K;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 38
    .line 39
    iget-object v3, p0, LC1/K;->f:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Ljava/io/File;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, LD1/b;->b()Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->r(LD1/b;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/lang/Thread;

    .line 58
    .line 59
    new-instance v1, LC1/F;

    .line 60
    .line 61
    const/4 v4, 0x2

    .line 62
    invoke-direct {v1, v3, v4}, LC1/F;-><init>(Ljava/io/File;I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    .line 70
    .line 71
    sget-object v0, LC1/Q;->b:LC1/Q;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
