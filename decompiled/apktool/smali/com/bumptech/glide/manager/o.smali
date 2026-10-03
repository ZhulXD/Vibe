.class public final Lcom/bumptech/glide/manager/o;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/bumptech/glide/manager/p;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/p;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Lcom/bumptech/glide/manager/p;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/bumptech/glide/manager/o;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Ly0/n;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Lcom/bumptech/glide/manager/p;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/manager/p;->a:Lb0/c;

    .line 7
    .line 8
    iget-boolean v1, v0, Lb0/c;->a:Z

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/o;->b:Z

    .line 11
    .line 12
    iput-boolean v2, v0, Lb0/c;->a:Z

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lb0/c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/bumptech/glide/manager/n;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/n;->a(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
