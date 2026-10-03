.class public final synthetic LB1/q;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/gamepad/GamepadOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/gamepad/GamepadOverlay;I)V
    .locals 0

    .line 1
    iput p2, p0, LB1/q;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LB1/q;->c:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, LB1/q;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, LB1/q;->c:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 12
    .line 13
    const/16 v0, -0x78

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->g(I)V

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
    invoke-virtual {v4, v2, v3}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->f(IZ)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 30
    .line 31
    invoke-virtual {v4, v2, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->f(IZ)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_2
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 38
    .line 39
    invoke-virtual {v4, v3, v3}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->f(IZ)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_3
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 46
    .line 47
    invoke-virtual {v4, v3, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->f(IZ)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_4
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 54
    .line 55
    const/16 v0, 0x78

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->g(I)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
