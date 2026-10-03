.class public final synthetic Ly1/z;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:LQ1/d;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/z;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/z;->d:LQ1/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ly1/z;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ly1/z;->d:LQ1/d;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/z;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 11
    .line 12
    new-instance v0, Ly1/k;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-direct {v0, v2, v1, v3}, Ly1/k;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 25
    .line 26
    new-instance v0, Ly1/k;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-direct {v0, v2, v1, v3}, Ly1/k;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
