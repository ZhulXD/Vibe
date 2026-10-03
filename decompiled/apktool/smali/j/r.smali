.class public final Lj/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/view/ActionProvider$VisibilityListener;


# instance fields
.field public final synthetic a:Lj/s;


# direct methods
.method public constructor <init>(Lj/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/r;->a:Lj/s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj/r;->a:Lj/s;

    .line 2
    .line 3
    iget-object p1, p1, Lj/s;->n:Lj/p;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lj/p;->h:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lj/p;->p(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
