.class public final synthetic Ly1/B0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GodotGameActivity;

.field public final synthetic d:LB1/u;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;LB1/u;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/B0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/B0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 4
    .line 5
    iput-object p2, p0, Ly1/B0;->d:LB1/u;

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
    .locals 3

    .line 1
    iget v0, p0, Ly1/B0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ly1/B0;->d:LB1/u;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/B0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {v2, v1, v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->o(LB1/u;Z)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {v2, v1, v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->o(LB1/u;Z)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
