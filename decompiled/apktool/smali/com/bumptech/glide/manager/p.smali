.class public final Lcom/bumptech/glide/manager/p;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:Lb0/c;


# direct methods
.method public constructor <init>(Lb0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/p;->a:Lb0/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/manager/o;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/p;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ly0/n;->f()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bumptech/glide/manager/o;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/manager/o;-><init>(Lcom/bumptech/glide/manager/p;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ly0/n;->f()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
