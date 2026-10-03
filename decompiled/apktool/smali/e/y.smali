.class public abstract Le/y;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lj0/r;


# instance fields
.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/y;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/y;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/B;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/y;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LA1/t0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Le/y;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Le/B;

    .line 10
    .line 11
    iget-object v1, v1, Le/B;->l:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Le/y;->b:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public abstract b()Landroid/content/IntentFilter;
.end method

.method public abstract c()I
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/y;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Le/y;->b()Landroid/content/IntentFilter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Le/y;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, LA1/t0;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, LA1/t0;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v2, p0}, LA1/t0;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Le/y;->b:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Le/y;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Le/B;

    .line 32
    .line 33
    iget-object v1, v1, Le/B;->l:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v2, p0, Le/y;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, LA1/t0;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public l(Lj0/y;)Lj0/q;
    .locals 5

    .line 1
    new-instance v0, Lk0/d;

    .line 2
    .line 3
    iget-object v1, p0, Le/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Le/y;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Class;

    .line 10
    .line 11
    const-class v3, Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p1, v3, v2}, Lj0/y;->a(Ljava/lang/Class;Ljava/lang/Class;)Lj0/q;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-class v4, Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p1, v4, v2}, Lj0/y;->a(Ljava/lang/Class;Ljava/lang/Class;)Lj0/q;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, v1, v3, p1, v2}, Lk0/d;-><init>(Landroid/content/Context;Lj0/q;Lj0/q;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
