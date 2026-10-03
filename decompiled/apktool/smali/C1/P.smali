.class public final synthetic LC1/P;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic c:LH0/o;

.field public final synthetic d:LC1/K;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;LH0/o;LC1/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/P;->b:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 5
    .line 6
    iput-object p2, p0, LC1/P;->c:LH0/o;

    .line 7
    .line 8
    iput-object p3, p0, LC1/P;->d:LC1/K;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, LC1/P;->b:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 2
    .line 3
    iget-object v0, p0, LC1/P;->c:LH0/o;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->C(Landroid/app/Dialog;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LC1/P;->d:LC1/K;

    .line 9
    .line 10
    invoke-virtual {p1}, LC1/K;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
