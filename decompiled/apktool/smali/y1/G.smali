.class public final synthetic Ly1/G;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/G;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/G;->c:Lcom/minhub/gamehub/game/GameActivity;

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
    iget p1, p0, Ly1/G;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ly1/G;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "controlsCoordinator"

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ly1/j1;->e(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Ly1/G;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    const-string p1, "controlsCoordinator"

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Ly1/j1;->e(Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
