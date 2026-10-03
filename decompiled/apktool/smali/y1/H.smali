.class public final synthetic Ly1/H;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:J

.field public final synthetic e:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic f:Ly1/p0;

.field public final synthetic g:Landroid/os/Handler;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/minhub/gamehub/data/Game;

.field public final synthetic j:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(IJLandroid/os/Handler;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ly1/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly1/H;->b:I

    .line 5
    .line 6
    iput-object p7, p0, Ly1/H;->c:Ljava/io/File;

    .line 7
    .line 8
    iput-wide p2, p0, Ly1/H;->d:J

    .line 9
    .line 10
    iput-object p6, p0, Ly1/H;->e:Lcom/minhub/gamehub/game/GameActivity;

    .line 11
    .line 12
    iput-object p10, p0, Ly1/H;->f:Ly1/p0;

    .line 13
    .line 14
    iput-object p4, p0, Ly1/H;->g:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p9, p0, Ly1/H;->h:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Ly1/H;->i:Lcom/minhub/gamehub/data/Game;

    .line 19
    .line 20
    iput-object p8, p0, Ly1/H;->j:Ljava/io/File;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Ly1/H;->b:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iget-wide v2, p0, Ly1/H;->d:J

    .line 6
    .line 7
    iget-object v4, p0, Ly1/H;->g:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v5, p0, Ly1/H;->i:Lcom/minhub/gamehub/data/Game;

    .line 10
    .line 11
    iget-object v6, p0, Ly1/H;->e:Lcom/minhub/gamehub/game/GameActivity;

    .line 12
    .line 13
    iget-object v7, p0, Ly1/H;->c:Ljava/io/File;

    .line 14
    .line 15
    iget-object v8, p0, Ly1/H;->j:Ljava/io/File;

    .line 16
    .line 17
    iget-object v9, p0, Ly1/H;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, p0, Ly1/H;->f:Ly1/p0;

    .line 20
    .line 21
    invoke-static/range {v1 .. v10}, Lcom/minhub/gamehub/game/GameActivity;->q(IJLandroid/os/Handler;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ly1/p0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
