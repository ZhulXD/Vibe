.class public final synthetic Ly1/A;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic c:Lcom/minhub/gamehub/data/Game;

.field public final synthetic d:LQ1/d;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/A;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/A;->c:Lcom/minhub/gamehub/data/Game;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/A;->d:LQ1/d;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/A;->b:Lcom/minhub/gamehub/game/GameActivity;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/A;->c:Lcom/minhub/gamehub/data/Game;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/A;->d:LQ1/d;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/String;

    .line 10
    .line 11
    sget v3, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 12
    .line 13
    const-string v3, "title"

    .line 14
    .line 15
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v3, "session"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "rawTitle"

    .line 24
    .line 25
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/game/GameActivity;->y(LQ1/d;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-enter v2

    .line 37
    :try_start_0
    iget-boolean v3, v2, LQ1/d;->c:Z

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    iget-boolean v3, v2, LQ1/d;->j:Z

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v3, 0x1

    .line 47
    iput-boolean v3, v2, LQ1/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    invoke-virtual {v2, p1, p2, v4}, LQ1/d;->a(Ljava/lang/String;Ljava/lang/String;Z)LQ1/c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, LQ1/d;->c()V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v0, v1, v2, p1, v4}, Ly1/s;->e(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;LQ1/c;Z)V

    .line 61
    .line 62
    .line 63
    move v4, v3

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_0
    monitor-exit v2

    .line 68
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p1
.end method
