.class public final synthetic Ly1/J;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ly1/p0;

.field public final synthetic f:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Ly1/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly1/J;->b:I

    .line 5
    .line 6
    iput-object p3, p0, Ly1/J;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 7
    .line 8
    iput-object p4, p0, Ly1/J;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Ly1/J;->e:Ly1/p0;

    .line 11
    .line 12
    iput-object p2, p0, Ly1/J;->f:Landroid/os/Handler;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Ly1/J;->b:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Ly1/J;->f:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v2, p0, Ly1/J;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 8
    .line 9
    iget-object v3, p0, Ly1/J;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Ly1/J;->e:Ly1/p0;

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Lcom/minhub/gamehub/game/GameActivity;->r(ILandroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Ly1/p0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
