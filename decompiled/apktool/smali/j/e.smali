.class public abstract Lj/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lq/j;

.field public c:Lq/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 6
    .line 7
    iget-object v0, p0, Lj/e;->b:Lq/j;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lq/j;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lj/e;->b:Lq/j;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lj/e;->b:Lq/j;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/MenuItem;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lj/x;

    .line 30
    .line 31
    iget-object v1, p0, Lj/e;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Lj/x;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lj/e;->b:Lq/j;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Lq/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    return-object p1
.end method

.method public final b(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/core/internal/view/SupportSubMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Landroidx/core/internal/view/SupportSubMenu;

    .line 6
    .line 7
    iget-object v0, p0, Lj/e;->c:Lq/j;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lq/j;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lj/e;->c:Lq/j;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lj/e;->c:Lq/j;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/SubMenu;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lj/J;

    .line 30
    .line 31
    iget-object v1, p0, Lj/e;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Lj/J;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lj/e;->c:Lq/j;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Lq/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    return-object p1
.end method
