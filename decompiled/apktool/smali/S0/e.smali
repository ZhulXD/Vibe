.class public final LS0/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic a:LS0/b;

.field public final synthetic b:LS0/f;


# direct methods
.method public constructor <init>(LS0/f;LS0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LS0/e;->b:LS0/f;

    .line 5
    .line 6
    iput-object p2, p0, LS0/e;->a:LS0/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    .line 1
    iget-object v0, p0, LS0/e;->b:LS0/f;

    .line 2
    .line 3
    iget-object v0, v0, LS0/d;->a:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LS0/e;->a:LS0/b;

    .line 8
    .line 9
    invoke-interface {v0}, LS0/b;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, LS0/e;->a:LS0/b;

    .line 2
    .line 3
    invoke-interface {v0}, LS0/b;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, LS0/e;->b:LS0/f;

    .line 2
    .line 3
    iget-object v0, v0, LS0/d;->a:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroid/window/BackEvent;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, LS0/e;->a:LS0/b;

    .line 13
    .line 14
    invoke-interface {p1, v0}, LS0/b;->c(Landroidx/activity/BackEventCompat;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, LS0/e;->b:LS0/f;

    .line 2
    .line 3
    iget-object v0, v0, LS0/d;->a:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroid/window/BackEvent;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, LS0/e;->a:LS0/b;

    .line 13
    .line 14
    invoke-interface {p1, v0}, LS0/b;->b(Landroidx/activity/BackEventCompat;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
