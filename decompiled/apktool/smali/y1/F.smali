.class public final synthetic Ly1/F;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ly1/p0;

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:J

.field public final synthetic h:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ly1/p0;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Lcom/minhub/gamehub/data/Game;Ljava/io/File;JLandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/F;->a:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/F;->b:Ly1/p0;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/F;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/F;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/F;->e:Lcom/minhub/gamehub/data/Game;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/F;->f:Ljava/io/File;

    .line 15
    .line 16
    iput-wide p7, p0, Ly1/F;->g:J

    .line 17
    .line 18
    iput-object p9, p0, Ly1/F;->h:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 4
    .line 5
    const-string v0, "true"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v7, p0, Ly1/F;->a:Ljava/io/File;

    .line 12
    .line 13
    iget-object v9, p0, Ly1/F;->b:Ly1/p0;

    .line 14
    .line 15
    iget-object v5, p0, Ly1/F;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 16
    .line 17
    iget-object v8, p0, Ly1/F;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Ly1/F;->e:Lcom/minhub/gamehub/data/Game;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-static {v7, v9, v5, v8, v4}, Lcom/minhub/gamehub/game/GameActivity;->p(Ljava/io/File;Ly1/p0;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Lcom/minhub/gamehub/data/Game;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iget-wide v1, p0, Ly1/F;->g:J

    .line 29
    .line 30
    iget-object v3, p0, Ly1/F;->h:Landroid/os/Handler;

    .line 31
    .line 32
    iget-object v6, p0, Ly1/F;->f:Ljava/io/File;

    .line 33
    .line 34
    invoke-static/range {v0 .. v9}, Lcom/minhub/gamehub/game/GameActivity;->q(IJLandroid/os/Handler;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ly1/p0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
