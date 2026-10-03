.class public final synthetic Ly1/I;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Ly1/p0;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ly1/p0;Landroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/I;->a:Ly1/p0;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/I;->b:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/I;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/I;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 6

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
    iget-object v4, p0, Ly1/I;->a:Ly1/p0;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {v4, p1}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, LC1/n;

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    iget-object v2, p0, Ly1/I;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 24
    .line 25
    iget-object v3, p0, Ly1/I;->d:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, p0, Ly1/I;->b:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-direct/range {v0 .. v5}, LC1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0x12c

    .line 33
    .line 34
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
