.class public final synthetic LB1/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

.field public final synthetic d:Lx1/a;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/gamepad/GamepadOverlay;Lx1/a;I)V
    .locals 0

    .line 1
    iput p3, p0, LB1/r;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LB1/r;->c:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 4
    .line 5
    iput-object p2, p0, LB1/r;->d:Lx1/a;

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
    iget v0, p0, LB1/r;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LB1/r;->d:Lx1/a;

    .line 4
    .line 5
    iget-object v2, p0, LB1/r;->c:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 11
    .line 12
    iget-object v0, v1, Lx1/a;->c:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v2, v0, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->e(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 22
    .line 23
    iget-object v0, v1, Lx1/a;->c:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v2, v0, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->e(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
