.class public final synthetic Ly1/Z1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/VxAceCheatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/Z1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/Z1;->c:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Ly1/Z1;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Ly1/Z1;->c:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p1, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
