.class public final synthetic Lcom/hatkid/mkxpz/gamepad/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;
.implements Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hatkid/mkxpz/gamepad/Gamepad;


# direct methods
.method public synthetic constructor <init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/hatkid/mkxpz/gamepad/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/b;->b:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onKeyDown(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/b;->b:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->a(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/b;->b:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->b(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/b;->b:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->g(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/b;->b:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->c(Lcom/hatkid/mkxpz/gamepad/Gamepad;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
