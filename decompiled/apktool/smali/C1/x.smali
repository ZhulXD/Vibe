.class public final synthetic LC1/x;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/x;->b:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/x;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget p1, p0, LC1/x;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/x;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/minhub/gamehub/game/GameActivity;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Lcom/minhub/gamehub/game/GameActivity;->l:Z

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, LC1/x;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lu1/a;

    .line 17
    .line 18
    iget-object p1, p1, Lu1/a;->b:Ly1/u;

    .line 19
    .line 20
    invoke-virtual {p1}, Ly1/u;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    iget-object p1, p0, LC1/x;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p1, Lcom/minhub/gamehub/hub/AddGameActivity;->o:LC1/u;

    .line 30
    .line 31
    iput-object v0, p1, Lcom/minhub/gamehub/hub/AddGameActivity;->m:LH0/o;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
